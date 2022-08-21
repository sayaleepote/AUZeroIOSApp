//
//  GetTokensViewController.swift
//  AUZero
//
//  Created by Sayalee on 21/8/2022.
//

import UIKit
import MapKit


struct Coordinate {
    let latitude: CGFloat
    let longitude: CGFloat
}

class GetTokensViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    let coordinates: [Coordinate] = [
        Coordinate(latitude: -37.898601, longitude: 145.214695),
        Coordinate(latitude: -37.899249, longitude: 145.197481),
        Coordinate(latitude: -37.902993, longitude: 145.200914),
        Coordinate(latitude: -37.908171, longitude: 145.189993)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -37.899249, longitude: 145.197481), latitudinalMeters: 1500, longitudinalMeters: 3400), animated: true)
        addPins()
    }

    //Function to add pins
    func addPins() {
        let windCorridor = MKPointAnnotation()
        windCorridor.title = "wind"
        windCorridor.coordinate = CLLocationCoordinate2D(
            latitude: coordinates[0].latitude,
            longitude: coordinates[0].longitude
        )
        mapView.addAnnotation(windCorridor)

        let bikes = MKPointAnnotation()
        bikes.title = "bike"
        bikes.coordinate = CLLocationCoordinate2D(
            latitude: coordinates[1].latitude,
            longitude: coordinates[1].longitude
        )
        mapView.addAnnotation(bikes)

        let ev = MKPointAnnotation()
        ev.title = "ev"
        ev.coordinate = CLLocationCoordinate2D(
            latitude: coordinates[2].latitude,
            longitude: coordinates[2].longitude
        )
        mapView.addAnnotation(ev)

        let pavement = MKPointAnnotation()
        pavement.title = "pavement"
        pavement.coordinate = CLLocationCoordinate2D(
            latitude: coordinates[3].latitude,
            longitude: coordinates[3].longitude
        )
        mapView.addAnnotation(pavement)
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

        if annotation is MKUserLocation {
            return nil
        }

        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "custom")

        if annotationView == nil {
            //Create View
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
        } else {
            //Assign annotation
            annotationView?.annotation = annotation
        }

        //Set image
        switch annotation.title {
        case "wind":
            annotationView?.image = UIImage(named: "wind")
        case "bike":
            annotationView?.image = UIImage(named: "bike")
        case "ev":
            annotationView?.image = UIImage(named: "ev")
        case "pavement":
            annotationView?.image = UIImage(named: "pavement")
        default:
            break
        }
        return annotationView
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

        let uiStoryboard = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = uiStoryboard.instantiateViewController(withIdentifier: "GreenSpotDetailsViewController") as? GreenSpotDetailsViewController else { return }
            present(vc, animated: true)
    }
}
