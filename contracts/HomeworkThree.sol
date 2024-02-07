// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Third_Homework {
    
    uint256 private counter;
    
    struct Proposal {
        string title;
        string description;
        uint256 approva;
        uint256 reject;
        uint256 pass;
        uint256 total_vote_to_end;
        bool current_state;
        bool is_active;
    }
    
    mapping(uint256 => Proposal) proposal_history;
    
    function create(string calldata _title,
        string calldata _description,
        uint256 _approva,
        uint256 _reject,
        uint256 _pass,
        uint256 _total_vote_to_end
    ) external {
		counter += 1;
		proposal_history[counter] = Proposal(_title, _description, _approva, _reject, _pass, _total_vote_to_end, false, true);
	}
}