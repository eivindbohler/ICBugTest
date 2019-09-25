# Intercom bug test

## Environment tested:
* macOS Mojave 10.14.6
* Xcode 11.0 (11A420a)

## Installing
To run, first install the Intercom framework:
```
$ carthage update
```

## Running
Run the scheme "ICBugTest with IC" and observe that the status bar style / text color can't be set.  
If scheme "ICBugTest without IC" is run, it can be changed just fine.

Only difference between the two schemes is that the Intercom framework is included in one and not the other.

When opening the "Debug View Hierarchy" in Xcode when running the app:  
![Debug View Hierarchy](/images/debug_view_hierarchy.png)

you can see that _with_ Intercom included, there will be an extra UIWindow in the view hierarchy with a view controller that presumably implements the `preferredStatusBarStyle` getter method, which is called instead of the main app's implementation:  

_With Intercom installed_  
![Hierarchy with Intercom](/images/hierarchy_with_intercom.png)  

_Without Intercom installed_  
![Hierarchy without Intercom](/images/hierarchy_without_intercom.png) 

## Screen recordings
_With Intercom installed_  
<img src="/images/running_with_ic.gif" width=300>  
  
_Without Intercom installed_  
<img src="/images/running_without_ic.gif" width=300>