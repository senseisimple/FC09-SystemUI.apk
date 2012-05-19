.class Lcom/android/systemui/usb/UsbStorageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const-string v3, "android.hardware.usb.action.USB_STATE"

    .line 89
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$000(Lcom/android/systemui/usb/UsbStorageActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v0, p2}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$1;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v0, p2}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
