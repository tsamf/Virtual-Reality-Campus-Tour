# Virtual Reality Campus Tour
An application that allows students to experience the UHCL campus orientation virtually using a Google Cardboard VR viewer and Android phone

<img src="/Documentation/InGameScreenShot.png" width="500">

Unity Version: Unity 5.6.1f1  
SDK: GVR SDK for Unity Version 1.110.0  
Platform: Google Cardboard Version 1.8  
Image Stitching/ 360 Images: Google Street view Version 2.0.0.168413699  
Video recording: Microsoft Camera app  
Hardware: Samsung S8, Google Cardboard  
Demo: https://www.youtube.com/watch?v=BOWjYIYRdsY  

At UHCL, students are required to take a campus tour before they can register for classes. Some students have issues getting to an in-person orientation.
This application gives students a detailed view of the campus and all necessary details potentially allowing them to register for classes, despite conflicts with the in-person tour schedule.

The tour is composed of points of interest. These points of interest include a 360 image of the area the student is standing in, a video overlay explaining the point of interest, and a gaze activated portal to the next point of interest that appears once the video has completed.  
<img src="/Documentation/PointsOfInterest.png" width="500">

To relay the tour information we have created a custom Chroma key shader in Shader Forge for guided video overlay.  
<img src="/Documentation/Chroma_Key_Shader.png" width="500">

Virtual Reality Campus Tour was made with 360 images of all major classrooms and offices in the Bayou building which were taken using Google Street View, and applied to spheres in Unity using a custom shader. For the interaction with the UI elements in the virtual environment, we have utilized the Unity particle system to create portal and warp visual effects for gaze-based movement.  
<img src="/Documentation/360_Image_Shader.png" width="500">
