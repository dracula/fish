function _dracula_themes_supported
    string match -q -r '(?<major>\d+).(?<minor>\d+).(?<patch>\d+)' -- $version
    test "(( $major -eq 3 -a $minor -ge 4) -o $major -gt 3 )"
end

function _dracula_theme_deprecation_message
    set bold (set_color --bold)
    set normal (set_color normal)
    set notice (string join "" (set_color cyan) "[NOTICE]" (set_color normal))

    echo "$notice The Dracula for Fish theme now supports being set with$bold fish_config$normal. Using the theme via the$bold conf.d$normal script is deprecated and will be removed in the future. Find the setup instructions at https://draculatheme.com/fish."
end

function _dracula_install --on-event dracula_install
    _dracula_themes_supported && _dracula_theme_deprecation_message
end

function _dracula_update --on-event dracula_update
    _dracula_themes_supported && _dracula_theme_deprecation_message
end

# Dracula Color Palette
set -l foreground f8f8f2
set -l selection 44475a
set -l comment 6272a4
set -l red ff5555
set -l orange ffb86c
set -l yellow f1fa8c
set -l green 50fa7b
set -l purple bd93f9
set -l cyan 8be9fd
set -l pink ff79c6

# Syntax Highlighting Colors
set -gx fish_color_normal $foreground
set -gx fish_color_command $cyan
set -gx fish_color_keyword $pink
set -gx fish_color_quote $yellow
set -gx fish_color_redirection $foreground
set -gx fish_color_end $orange
set -gx fish_color_error $red
set -gx fish_color_param $purple
set -gx fish_color_comment $comment
set -gx fish_color_selection --background=$selection
set -gx fish_color_search_match --background=$selection
set -gx fish_color_operator $green
set -gx fish_color_escape $pink
set -gx fish_color_autosuggestion $comment
set -gx fish_color_cancel $red --reverse
set -gx fish_color_option $orange

# Default Prompt Colors
set -gx fish_color_cwd $green
set -gx fish_color_host $purple
set -gx fish_color_host_remote $purple
set -gx fish_color_user $cyan

# Completion Pager Colors
set -gx fish_pager_color_progress $comment
set -gx fish_pager_color_background
set -gx fish_pager_color_prefix $cyan
set -gx fish_pager_color_completion $foreground
set -gx fish_pager_color_description $comment
set -gx fish_pager_color_selected_background --background=$selection
set -gx fish_pager_color_selected_prefix $cyan
set -gx fish_pager_color_selected_completion $foreground
set -gx fish_pager_color_selected_description $comment
set -gx fish_pager_color_secondary_background
set -gx fish_pager_color_secondary_prefix $cyan
set -gx fish_pager_color_secondary_completion $foreground
set -gx fish_pager_color_secondary_description $comment
