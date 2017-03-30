package com.accenture.controlador;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.accenture.modelo.Orden;
import com.accenture.model.Exercise;
import com.accenture.modelo.Caja;;

@Controller
public class main {
	private static List<Caja> productos=new ArrayList<Caja>();
	static{
		productos.add(new Caja("CHIPS AHOY 500 gr", 40, 0));
		productos.add(new Caja("Giro 500 gr", 35, 0));
		productos.add(new Caja("Oreo 500 gr", 45, 0));
	}
	@RequestMapping (value ="/main")
	public String addItems (Model modelo) {
			Orden orden=new Orden();
			orden.setLista(productos);
			modelo.addAttribute("orden", orden);
			return "main";
	}
	@RequestMapping(value = "/result", method = RequestMethod.POST)
    public String displayItems(Model modelo) {
        modelo.addAttribute("llave", "Gracias por su compra");
        return "result";
    }
}
