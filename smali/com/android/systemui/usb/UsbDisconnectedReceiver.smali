.class Lcom/android/systemui/usb/UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDisconnectedReceiver.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .parameter "activity"
    .parameter "accessory"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, action:Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "accessory"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 47
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 51
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_0
    return-void
.end method
