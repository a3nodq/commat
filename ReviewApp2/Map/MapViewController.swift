//
//  MapViewController.swift
//  ReviewApp
//
//  Created by Waad Alsaif on 04/03/2022.





import UIKit
import MapKit
class MapViewController: UIViewController {

    @IBOutlet weak var mapViewConnect: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
            let initialLoc = CLLocation(latitude: 24.693719, longitude: 46.7235696)
            setStartingLocation(location: initialLoc, distance: 3000)
            addAnnotation()
          }
          func setStartingLocation(location: CLLocation,distance: CLLocationDistance){
            let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
            mapViewConnect.setRegion(region,animated:true)
            //mapViewConnect.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region),animated: true) // بيخلي حدود للكاميرا
            let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 30000)
            mapViewConnect.setCameraZoomRange(zoomRange, animated: true)
          }
          func addAnnotation(){
            let pin = MKPointAnnotation()
            pin.coordinate = CLLocationCoordinate2D(latitude: 24.693719, longitude: 46.7235696)
              pin.title = "My place"
              pin.subtitle = "my small home"
            mapViewConnect.addAnnotation(pin)
          }
        }
