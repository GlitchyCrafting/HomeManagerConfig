{ ... }:
{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      username = {
        format = " [╭─$user]($style)@";
        show_always = true;
        style_root = "bold red";
        style_user = "bold purple";
      };
      hostname = {
        disabled = false;
        format = "[$hostname]($style) in ";
        ssh_only = false;
        style = "bold dimmed purple";
        trim_at = "-";
      };
      directory = {
        style = "purple";
        truncate_to_repo = true;
        truncation_length = 0;
        truncation_symbol = "repo: ";
      };
      sudo = {
        disabled = false;
      };
      git_status = {
        ahead = "⇡$count";
        behind = "⇣$count";
        deleted = "x";
        diverged = "⇕⇡$ahead_count⇣$behind_count";
        style = "white";
      };
      cmd_duration = {
        disabled = false;
        format = "took [$duration]($style)";
        min_time = 1;
      };
      battery = {
        charging_symbol = "";
        disabled = false;
        discharging_symbol = "";
        full_symbol = "";
      };
      time = {
        disabled = true;
      };
      character = {
        error_symbol = " [x](bold red)";
        success_symbol = " [╰─λ](bold purple)";
      };
      status = {
        disabled = false;
        format = "[\[$symbol$status_common_meaning$status_signal_name$status_maybe_int\]]($style)";
        map_symbol = true;
        pipestatus = true;
        symbol = "🔴";
      };
      aws.symbol = " ";
      conda.symbol = " ";
      dart.symbol = " ";
      docker_context.symbol = " ";
      elixir.symbol = " ";
      elm.symbol = " ";
      git_branch.symbol = " ";
      golang.symbol = " ";
      hg_branch.symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      nim.symbol = " ";
      nix_shell.symbol = " ";
      nodejs.symbol = " ";
      package.symbol = " ";
      perl.symbol = " ";
      php.symbol = " ";
      python.symbol = " ";
      ruby.symbol = " ";
      rust.symbol = " ";
      swift.symbol = "ﯣ ";
    };
  };
}