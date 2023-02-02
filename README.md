# Virtual Reality Campus Tour
An application that allowes students to experience the UHCL campus orientation virtually using a Google Cardboard VR viewer and Android phone

Unity Version: Unity 5.6.1f1  
SDK: GVR SDK for Unity Version 1.110.0  
Platform : Google Cardboard Version 1.8  
Image Stitching/ 360 Images: Google Street view Version 2.0.0.168413699  
Video recording: Microsoft Camera app  
Hardware: Samsung S8, Google Cardboard  


At UHCL students are required to take a campus tour before they can register for classes. Some students have issues getting to an in person orientation.
This application gives students a detailed view of the campus and all necessary details potentially allowing them to register for classes despite conflicts with the in person tour schedual.

Virtual reality campus tour was made with 360 images of all major classrooms and offices in the bayou building which were taken using Google Street View. To provide the information we have created a custom Chroma key shader in Shader Forge for guided video overlay, for the interaction with the UI elements in the virtual environment we have utalized the Unity particle system to create portal and wrap visual effects for gaze-based player movement.

Demo: https://www.youtube.com/watch?v=BOWjYIYRdsY&t=6s
