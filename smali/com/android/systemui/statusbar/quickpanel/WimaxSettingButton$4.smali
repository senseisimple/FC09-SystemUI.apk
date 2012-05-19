.class Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;
.super Ljava/lang/Object;
.source "WimaxSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->checkWifiForWimax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;->this$0:Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;->this$0:Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->access$200(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;->this$0:Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)Landroid/content/Context;

    const-string v2, "WiMax"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    .line 256
    .local v0, wimax:Landroid/net/wimax/WimaxManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;->this$0:Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 257
    invoke-virtual {v0, v3}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    .line 258
    return-void
.end method
