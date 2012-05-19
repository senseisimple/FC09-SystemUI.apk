.class Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;->this$0:Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 37
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 42
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
