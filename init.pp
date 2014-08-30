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
  
        for each $output_type list {
          for each user {
            append user identifier of $output_type to $output_type list
          }
        }
      }
      
    }
  unset u_groupid_list
  unset i_groupid_lists
  }

  
  if u_groupid_list > 0 {
    convert u_groupid_lists to i_groupid_lists
    for each i_groupid_list {
      for each i_groupid {
        convert i_groupids to ('i_' + $output_type + '_list') lists
        for each ('i_' + $output_type + '_list') {
          for each user {
            append user to p_user_list
          }
        }
      }
    }
  }

for each i_uid_list { 
for each i_uid {
append i_uid to p_uid_list
}
}
}

}

}
else {

If i_group_list > 0 {

for each i_group_list {

convert i_groups to i_users lists

append i_users to i_user_list list
for each i_user_list { 
for each i_user {
append i_user to p_user_list
}
}
}

}

}



if output_type == uid {

if u_uid_list > 0 {

convert u_uid_list to i_uid_list
append i_uid_list to p_uid_list
}

}
else {

if u_username_list > 0 {

convert u_user_list to i_user_list
append i_user_list to p_user_list
}

}

}

}

}
else {


Set default uid 1000 user as single list member in p_uid_list

}






}






}
