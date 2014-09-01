# Class: user_aggregator
#
# This module manages user_aggregator
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class user_aggregator {

  Input is u_group_list, u_groupid_list, u_user_list, u_uid_list, &&/|| output_type (p_username_list or p_uid_list)

  Verify OS

  if u_group_list > 0 {
    for each u_group_list {
      if u_group_list type != $output_type {
        convert u_group_list to $output_type
      }
      append u_group_list to p_group_list
    }
    unset u_group_list
  }

  if u_groupid_list > 0 {
    for each u_groupid_list {
      if u_groupid_list type != $output_type {
        convert u_groupid_list to $output_type
      }
      append u_groupid_list to p_group_list
    }
    unset u_groupid_list
  }

  if p_group_list > 0 {
    for each $output_type list {
      for each user {
        append user identifier of $output_type to $output_type list
	    }
	  }
	}
	
	if u_username_list > 0 {
    if u_username_list type != $output_type {
      convert u_username_list to $output_type
    }
    for each user {
      append user identifier of $output_type to $output_type list
    }
	}

  if u_uid_list > 0 {
    if u_uid_list type != $output_type {
      convert u_uid_list to $output_type
    }
    for each user {
      append user identifier of $output_type to $output_type list
    }
  }
  
  if $output_type list > 0 {
    remove duplicates
  }
  else {
    (Set default uid 1000 user as single list member--
    --append uid 1000 of $output_type to $output_type list)
  }
  
  return or set the output of the aggregated users
}
