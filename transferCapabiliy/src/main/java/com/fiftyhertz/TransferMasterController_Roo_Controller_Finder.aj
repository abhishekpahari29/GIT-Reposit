// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhertz;

import com.fiftyhertz.TransferMasterController;
import com.fiftyhertz.domain.CorridorMaster;
import com.fiftyhertz.domain.TransferMaster;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect TransferMasterController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByCorridorName", "form" }, method = RequestMethod.GET)
    public String TransferMasterController.findTransferMastersByCorridorNameForm(Model uiModel) {
        uiModel.addAttribute("corridormasters", CorridorMaster.findAllCorridorMasters());
        return "transfermasters/findTransferMastersByCorridorName";
    }
    
    @RequestMapping(params = "find=ByCorridorName", method = RequestMethod.GET)
    public String TransferMasterController.findTransferMastersByCorridorName(@RequestParam("corridorName") CorridorMaster corridorName, Model uiModel) {
        uiModel.addAttribute("transfermasters", TransferMaster.findTransferMastersByCorridorName(corridorName).getResultList());
        return "transfermasters/list";
    }
    
    @RequestMapping(params = { "find=ByStartDateEquals", "form" }, method = RequestMethod.GET)
    public String TransferMasterController.findTransferMastersByStartDateEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "transfermasters/findTransferMastersByStartDateEquals";
    }
    
    @RequestMapping(params = "find=ByStartDateEquals", method = RequestMethod.GET)
    public String TransferMasterController.findTransferMastersByStartDateEquals(@RequestParam("startDate") @DateTimeFormat(style = "M-") Date startDate, Model uiModel) {
        uiModel.addAttribute("transfermasters", TransferMaster.findTransferMastersByStartDateEquals(startDate).getResultList());
        addDateTimeFormatPatterns(uiModel);
        return "transfermasters/list";
    }
    
}