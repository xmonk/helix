use helix_event::register_hook;
use helix_view::events::DocumentFocusLost;
use helix_view::handlers::Handlers;
use std::sync::atomic::{AtomicBool, Ordering};

use crate::job::{self};
use crate::ui;

static INITIALIZATION_COMPLETE: AtomicBool = AtomicBool::new(false);

pub fn mark_initialization_complete() {
    INITIALIZATION_COMPLETE.store(true, Ordering::Relaxed);
}

pub(super) fn register_hooks(_handlers: &Handlers) {
    register_hook!(move |_event: &mut DocumentFocusLost<'_>| {
        // Only close prompts after initialization is done to avoid
        // interfering with CLI flags like --vsplit and --hsplit
        if !INITIALIZATION_COMPLETE.load(Ordering::Relaxed) {
            return Ok(());
        }

        job::dispatch_blocking(move |_, compositor| {
            if compositor.find::<ui::Prompt>().is_some() {
                compositor.remove_type::<ui::Prompt>();
            }
        });
        Ok(())
    });
}
