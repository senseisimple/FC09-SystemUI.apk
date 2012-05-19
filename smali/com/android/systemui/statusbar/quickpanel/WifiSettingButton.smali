.class public final Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "WifiSettingButton.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 32
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .local v4, statusIconRes:I
    const/4 v5, -0x1

    .line 84
    .local v5, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a000e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0010

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setTextColor(I)V

    .line 106
    return-void

    .line 90
    :pswitch_0
    const v1, 0x7f02002a

    .line 91
    const v4, 0x7f020021

    .line 92
    goto :goto_0

    .line 94
    :pswitch_1
    const v1, 0x7f020029

    .line 95
    const v4, 0x7f020020

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    const v1, 0x7f020028

    .line 99
    const v4, 0x7f02001f

    .line 100
    const v5, -0x777778

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateIconsAndTextColor()V

    .line 80
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 75
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    const-string v2, "WifiSettingButton"

    .line 113
    const-string v1, "WifiSettingButton"

    const-string v1, "activate()"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const-string v1, "WifiSettingButton"

    const-string v2, "Wifi is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    goto :goto_0
.end method

.method public checkWifiForWimax()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "WifiSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    .line 133
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 41
    const-string v0, "WifiSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 57
    const-string v0, "WifiSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    .line 110
    return-void
.end method
