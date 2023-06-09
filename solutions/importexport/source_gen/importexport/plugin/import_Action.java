package importexport.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import jetbrains.mps.workbench.action.ActionAccess;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.baseLanguage.logging.rt.LogContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import javax.swing.JFrame;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.io.File;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.Scanner;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ArrayUtils;
import java.io.IOException;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class import_Action extends BaseAction {
  private static final Icon ICON = null;

  public import_Action() {
    super("Import model from INI file", "", ICON);
    this.setIsAlwaysVisible(true);
    this.setActionAccess(ActionAccess.UNDO_PROJECT);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      if (node == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    LogContext.with(import_Action.class, null, null).info("Import");
    SNode root;
    if (SNodeOperations.isInstanceOf(event.getData(MPSCommonDataKeys.NODE), CONCEPTS.BaseContent$si)) {
      root = (SNode) SNodeOperations.getParent(event.getData(MPSCommonDataKeys.NODE));
    } else if (SNodeOperations.isInstanceOf(event.getData(MPSCommonDataKeys.NODE), CONCEPTS.File$CR)) {
      root = (SNode) event.getData(MPSCommonDataKeys.NODE);
    } else {
      LogContext.with(import_Action.class, null, null).error("Import action invoked in wrong model.");
      return;
    }

    if (ListSequence.fromList(SLinkOperations.getChildren(root, LINKS.content$Kqdr)).count() > 0) {
      LogContext.with(import_Action.class, null, null).error("Please select an empty root to import to.");
      return;
    }

    JFrame frame = new JFrame();
    frame.setVisible(false);
    JFileChooser jfc = new JFileChooser();
    FileNameExtensionFilter filter = new FileNameExtensionFilter("INI", "ini");
    jfc.setFileFilter(filter);
    jfc.setDialogTitle("Choose file to import.");
    int userSelection = jfc.showOpenDialog(frame);
    if (userSelection == JFileChooser.APPROVE_OPTION) {
      File selectedFile = jfc.getSelectedFile();
      SPropertyOperations.assign(root, PROPS.name$MnvL, selectedFile.getName().substring(0, selectedFile.getName().length() - 4));
      try {
        Scanner sc = new Scanner(selectedFile);
        while (sc.hasNextLine()) {
          String s = sc.nextLine();
          if (s.startsWith(";")) {
            SNode child = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52d090L, "ini.structure.Comment"));
            SPropertyOperations.assign(child, PROPS.comment$ylhV, s.substring(1, s.length()));
            ListSequence.fromList(SLinkOperations.getChildren(root, LINKS.content$Kqdr)).addElement(child);
          } else if (s.startsWith("[") && s.endsWith("]")) {
            SNode child = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52d802L, "ini.structure.SectionHeader"));
            SPropertyOperations.assign(child, PROPS.header$hLuo, s.substring(1, s.length() - 1));
            ListSequence.fromList(SLinkOperations.getChildren(root, LINKS.content$Kqdr)).addElement(child);
          } else if (Sequence.fromIterable(ArrayUtils.fromCharacterArray(s.toCharArray())).contains('=')) {
            SNode child = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52e040L, "ini.structure.KeyValue"));
            SPropertyOperations.assign(child, PROPS.key$By_t, trim_cbigpk_a2a1a1b0b0c0n0f(s.split("=")[0]));
            SPropertyOperations.assign(child, PROPS.value$FaoT, trim_cbigpk_a2a2a1b0b0c0n0f(s.substring(s.split("=")[0].length() + 1)));
            ListSequence.fromList(SLinkOperations.getChildren(root, LINKS.content$Kqdr)).addElement(child);
          } else {
            LogContext.with(import_Action.class, null, null).debug("Ignored " + s);
          }
        }
      } catch (IOException ioe) {
        LogContext.with(import_Action.class, null, null).error(ioe);
      }
    }
  }
  public static String trim_cbigpk_a2a1a1b0b0c0n0f(String str) {
    return (str == null ? null : str.trim());
  }
  public static String trim_cbigpk_a2a2a1b0b0c0n0f(String str) {
    return (str == null ? null : str.trim());
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept BaseContent$si = MetaAdapterFactory.getConcept(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52cccdL, "ini.structure.BaseContent");
    /*package*/ static final SConcept File$CR = MetaAdapterFactory.getConcept(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb512301L, "ini.structure.File");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink content$Kqdr = MetaAdapterFactory.getContainmentLink(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb512301L, 0x4878b309fb52c886L, "content");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty comment$ylhV = MetaAdapterFactory.getProperty(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52d090L, 0x4878b309fb52d4a4L, "comment");
    /*package*/ static final SProperty header$hLuo = MetaAdapterFactory.getProperty(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52d802L, 0x4878b309fb52de02L, "header");
    /*package*/ static final SProperty key$By_t = MetaAdapterFactory.getProperty(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52e040L, 0x4878b309fb52e46cL, "key");
    /*package*/ static final SProperty value$FaoT = MetaAdapterFactory.getProperty(0x7f902c7db9de4f86L, 0x8d2e38710197ee79L, 0x4878b309fb52e040L, 0x4878b309fb52e4d6L, "value");
  }
}
