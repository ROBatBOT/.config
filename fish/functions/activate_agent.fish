# Fish Shell: Agent Context Switcher

# Activate agent function
activate_agent() = {
    set -q argv[1] or return 1
    
    set -l agent_name "$argv[1]"
    
    if not test -d "$HOME/.hermes/agents/$agent_name"
        echo "$agent_name: Agent directory not found!"
        echo "Available agents:"
        lsd -l $HOME/.hermes/agents/ 2>/dev/null || true
        return 1
    end
    
    if not test -f "$HOME/.hermes/agents/$agent_name/.env"
        echo "$agent_name: .env file not found!"
        return 1
    end
    
    source "$HOME/.hermes/agents/$agent_name/.env" 2>/dev/null || true
    
    if set -q AGENTS_NAME
        echo "🟢 Activated: $agent_name"
        echo "✅ Context: AGENTS_NAME=$AGENTS_NAME"
        echo "✅ Location: $HOME/.hermes/agents/$agent_name/"
        
        return 0
    else
        echo "❌ Agent $agent_name loaded without context"
        return 1
    end
}

# Activate agent with context pattern
activate_agent_with_context() = {
    activate_agent "$argv[1]"
}

# Convenience functions
activate_Ourea() = { activate_agent "Ourea" }
activate_Cronus() = { activate_agent "Cronus" }
activate_Rhea() = { activate_agent "Rhea" }
activate_Rhea_backup() = { activate_agent "Rhea_backup" }

# Agent status
agent_status() = {
    echo "=== Agent Status ==="
    if test -d $HOME/.hermes/agents
        for agent in (ls -1 -d $HOME/.hermes/agents/*/ 2>/dev/null | xargs -I {} basename {})
            echo "✅ $agent"
        end
    else
        echo "No agents in $HOME/.hermes/agents/"
    end
    echo ""
    if set -q AGENTS_NAME
        echo "🟢 Current: $AGENTS_NAME"
    else
        echo "🟠 No agent currently active"
    end
}

# List available agents
_available_agents() = {
    if test -d $HOME/.hermes/agents
        for agent in (ls -1 -d $HOME/.hermes/agents/*/ 2>/dev/null | xargs -I {} basename {})
            test -f "$HOME/.hermes/agents/$agent/.env" && echo "✅ $agent"
        end
    end
}

# Get current agent
_current_agent() = {
    set -q AGENTS_NAME and echo $AGENTS_NAME or echo "No agent active"
}

# Example usage:
# activate_agent Ourea
# activate_agent_with_context Ourea
# activate_Ourea
# agent_status