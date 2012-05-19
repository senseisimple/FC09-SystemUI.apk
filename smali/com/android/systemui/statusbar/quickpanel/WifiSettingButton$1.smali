.class Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, state:I
    const-string v1, "WifiSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;I)V

    .line 27
    return-void
.end method
