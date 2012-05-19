.class Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->this$0:Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
