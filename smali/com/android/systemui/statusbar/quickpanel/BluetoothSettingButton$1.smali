.class Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    .local v0, state:I
    const-string v1, "BluetoothSettingButton"

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

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V

    .line 28
    return-void
.end method
