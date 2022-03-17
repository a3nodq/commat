//
//  ContainerPageVc.swift
//  Walkthrough
//
//  Created by bushra  on 03/08/1443 AH.
//

import UIKit

class ContainerPageVc: UIPageViewController , UIPageViewControllerDelegate,UIPageViewControllerDataSource{
    
    
    
    var pageControl = UIPageControl()
    var arryContainer = [UIViewController]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor.white
        
        
        
        let firstpageID = self.storyboard?
            .instantiateViewController(withIdentifier: "firstpageID")

        let SecondVC = self.storyboard?
            .instantiateViewController(withIdentifier: "SecondVC")

//        let PageC = self.storyboard?
//            .instantiateViewController(withIdentifier: "PageC")
//
//        let PageD = self.storyboard?
//            .instantiateViewController(withIdentifier: "PageD")
//        let page1 = self.storyboard?
//            .instantiateViewController(withIdentifier: "page1")
//
//        let page2 = self.storyboard?
//            .instantiateViewController(withIdentifier: "page2")
        
        // Do any additional setup after loading the view.
    
       
        
        arryContainer.append(firstpageID!)
        arryContainer.append(SecondVC!)
//        arryContainer.append(PageC!)
//        arryContainer.append(PageD!)
//        arryContainer.append(page1!)

        
        delegate = self
        dataSource = self
        
        
        if let firstpage = arryContainer.first{
            
            
            setViewControllers([firstpage], direction: .forward, animated: true, completion: nil)
            
            
        }
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arryContainer.firstIndex(of: viewController) else{
          return nil
        }
        let afteerIndex = +1
        guard afteerIndex < arryContainer.count else{
          return arryContainer.first
        }
        return arryContainer[afteerIndex]
      }
        
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = arryContainer.firstIndex(of: viewController) else{
            
            return nil
            
        }
        
        
        let previouseIndex = currentIndex - 1
        
        guard previouseIndex >= 0 else {
            
            return arryContainer.last
            
        }
        
        return arryContainer[previouseIndex]
    }
    
    
    
   
    
    
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//
//
//        return arryContainer.count
//    }
//
//
//
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//
//        return 0
//    }
   
    
    func addPageControl(){
        
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxX - 75, width: UIScreen.main.bounds.width, height: 50))
        
        self.pageControl.numberOfPages = arryContainer.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.gray
        self.pageControl.pageIndicatorTintColor = UIColor.gray
        self.pageControl.currentPageIndicatorTintColor = UIColor.gray
        self.view.addSubview(pageControl)
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        
        let pageCountViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = arryContainer.firstIndex(of: pageCountViewController)!
        
        
        
    }
    
    
}

