package importexport.plugin;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.workbench.action.ApplicationPlugin;

public class importexport_ini_ActionGroup extends GeneratedActionGroup {
  public static final String ID = "importexport.plugin.importexport_ini_ActionGroup";

  public importexport_ini_ActionGroup(@NotNull ApplicationPlugin plugin) {
    super("importexport_ini", ID, plugin);
    setIsInternal(false);
    setPopup(false);
    importexport_ini_ActionGroup.this.addAction("importexport.plugin.export_Action");
    importexport_ini_ActionGroup.this.addAction("importexport.plugin.import_Action");
  }
}
