.class public Lcom/lidroid/systemui/quickpanel/WifiButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/WifiButton$1;,
        Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;-><init>(Lcom/lidroid/systemui/quickpanel/WifiButton$1;)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleWifi"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x30b003d

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x3020090

    const v2, 0x302008f

    .line 88
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mState:I

    .line 89
    iget v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    .line 94
    :pswitch_2
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    .line 102
    :pswitch_3
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    .line 105
    :cond_0
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
