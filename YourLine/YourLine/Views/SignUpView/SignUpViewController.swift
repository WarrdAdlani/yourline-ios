//
//  SignUpViewController.swift
//  YourLine
//
//  Created by Warrd Adlani on 12/06/2022.
//

import UIKit
import Utility

class SignUpViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    private var context: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        buildView()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func buildView() {
        let signInStoryboard = UIStoryboard.init(name: StoryboardNames.signUpView.name, bundle: Bundle.main)
        let signUpFieldView = signInStoryboard.instantiateViewController(withIdentifier: "SignUpFieldsViewController")
        
        context = UINavigationController(rootViewController: signUpFieldView)
        context?.navigationBar.isHidden = true
        addChild(context!)
        context?.view.frame = containerView.bounds
        context?.didMove(toParent: self)
        containerView.addSubview(context!.view)
    }
    
    @IBAction func didTapNextButton(_ sender: Any) {
        let signInStoryboard = UIStoryboard.init(name: StoryboardNames.signUpView.name, bundle: Bundle.main)
        let signUpFieldView = signInStoryboard.instantiateViewController(withIdentifier: "SignUpFieldsViewController")
        
        context?.pushViewController(signUpFieldView, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
