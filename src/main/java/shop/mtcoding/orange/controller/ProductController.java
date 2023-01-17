package shop.mtcoding.orange.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.orange.model.ProductRepository;

@Controller
public class ProductController {

    @Autowired     
    private ProductRepository productRepository;


    @GetMapping("/test")
    public String tes1t(){
        return "test";
    }
    // @GetMapping({"/product","/"})
    // public String findAll(Model model){
    //     List<Product> productlist = productRepository.findAll();
    //     model.addAttribute("productList", productlist);   
    //          // model =  request.setAttribute("productlist", productlist); 의 기능 자동                   
    //     return "product/main";  //  원래 과정은 request 생성 - 덮어씀 ( 프레임워크가 해준다 )
    // }

    // @GetMapping("/product/{id}")
    // public String findOne(@PathVariable int id, Model model){
    //     Product product = productRepository.findOne(id);
    //     model.addAttribute("product", product);
    //     return "product/detail";
    // }

    @GetMapping("product/addForm")
    public String addForm(){
        return "product/addForm";
    }

    // @PostMapping("product/add")
    // public String add(String name, Integer price, Integer qty){
    //     // SRP를 지키자 -> DB 접근은 Repository 가 책임진다 ( 위임 ) 
    //     // 아래의 기능도 분리시키는게 좋지만 한번에 작성하겠음
    //     if (name==null||price==null||qty==null)
    //          return "redirect:/product/addForm"; 
    //     int result = productRepository.insert(name,price,qty);
    //     if(result == 1){  // 1개만 추가되게 폼을 만들어 놨으므로
    //         return "redirect:/product/";
    //     }else{
    //         return "redirect:/product/addForm";
    //     }
    // }

    // @PostMapping("product/{id}/delete")
    // // product/${product.id}/delete
    // public String delete(@PathVariable int id) {
    //     int result = productRepository.delete(id);
    //     if (result == 1){
    //         return "redirect:/product/";
    //     }else{
    //         return "redirect:/product/addForm";
    //     }
    // }

    // @GetMapping("product/{id}/update")
    // public String update(@PathVariable int id, Model model) {
    //     Product product = productRepository.findOne(id);
    //     model.addAttribute("p", product);
    //     return "product/updateForm";
    // }

    // @PostMapping("product/{id}/update")
    // public String update1(@PathVariable int id, String name, int price, int qty) {
    //     int result = productRepository.update(id, name, price, qty);
    //     if ( result == 1){
    //         return "redirect:/product";
    //     }else{
    //         return "redirect:/product/updateForm";
            
    //     }
    // }
}
