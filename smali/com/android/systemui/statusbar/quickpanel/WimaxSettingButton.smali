.class public final Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "WimaxSettingButton.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWiMaxStatus:Z

.field private mWimaxManager:Landroid/net/wimax/WimaxManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWiMaxStatus:Z

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 70
    const-string v0, "WimaxSettingButton"

    const-string v1, "handleStateChanged(int state)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->updateStatus(I)V

    .line 72
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 8

    .prologue
    const-string v7, "WimaxSettingButton"

    .line 159
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .local v4, statusIconRes:I
    const/4 v5, -0x1

    .line 160
    .local v5, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a001a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a001c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 163
    .local v3, statusIcon:Landroid/widget/ImageView;
    const-string v6, "WimaxSettingButton"

    const-string v6, "updateIconsAndTextColor()"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 181
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setTextColor(I)V

    .line 184
    return-void

    .line 166
    :pswitch_0
    const-string v6, "WimaxSettingButton"

    const-string v6, "STATUS_ON"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const v1, 0x7f020019

    .line 168
    const v4, 0x7f020021

    .line 169
    goto :goto_0

    .line 171
    :pswitch_1
    const-string v6, "WimaxSettingButton"

    const-string v6, "STATUS_OFF"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const v1, 0x7f020018

    .line 173
    const v4, 0x7f020020

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    const v1, 0x7f020017

    .line 177
    const v4, 0x7f02001f

    .line 178
    const v5, -0x777778

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "WimaxSettingButton"

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, needUpdate:Z
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->updateIconsAndTextColor()V

    .line 156
    return-void

    .line 107
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 108
    const-string v1, "WimaxSettingButton"

    const-string v1, "WIMAX_STATUS_ENABLING"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setSoundEffectsEnabled(Z)V

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWiMaxStatus:Z

    .line 111
    const/4 v0, 0x0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    const-string v1, "WimaxSettingButton"

    const-string v1, "WimaxManager.WIMAX_STATUS_ENABLED"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWiMaxStatus:Z

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v1, "WimaxSettingButton"

    const-string v1, "WimaxManager.WIMAX_STATUS_DISABLED"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWiMaxStatus:Z

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 127
    :pswitch_3
    const-string v1, "WimaxSettingButton"

    const-string v1, "WIMAX_STATUS_UNKNOWN"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public checkWifiForWimax()V
    .locals 12

    .prologue
    .line 210
    const-string v9, "WimaxSettingButton"

    const-string v10, "checkWifiForWimax()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v9, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v10, "WiMax"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wimax/WimaxManager;

    .line 213
    .local v7, wimaxManager:Landroid/net/wimax/WimaxManager;
    if-eqz v7, :cond_1

    .line 214
    invoke-virtual {v7}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v8

    .line 215
    .local v8, wimaxState:I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 216
    const-string v9, "WimaxSettingButton"

    const-string v10, "wimaxState"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v7}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 219
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/net/wimax/WimaxManager;->setWimaxMode(IZ)I

    .line 221
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 222
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    .line 275
    .end local v8           #wimaxState:I
    :cond_1
    :goto_0
    return-void

    .line 223
    .restart local v8       #wimaxState:I
    :cond_2
    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 224
    :cond_3
    const-string v9, "WimaxSettingButton"

    const-string v10, "checkWifiState()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v9, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 226
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v9, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 227
    .local v3, cm:Landroid/net/ConnectivityManager;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 228
    .local v6, wifiState:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 229
    .local v2, bWifiEnabled:Z
    const/4 v1, 0x0

    .line 230
    .local v1, bIsWifiConnected:Z
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_4

    .line 231
    const/4 v1, 0x1

    .line 235
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 236
    const-string v9, "WimaxSettingButton"

    const-string v10, "bWifiEnabled && bIsWifiConnected"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f08000d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08000a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08000b

    new-instance v11, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$2;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$2;-><init>(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    .local v0, adc:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 233
    .end local v0           #adc:Landroid/app/AlertDialog;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 248
    :cond_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 249
    const-string v9, "WimaxSettingButton"

    const-string v10, "wifi enable, connect"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f08000d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08000e

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08000b

    new-instance v11, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$4;-><init>(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08000c

    new-instance v11, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$3;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton$3;-><init>(Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 264
    .local v4, connect:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 265
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 269
    .end local v4           #connect:Landroid/app/AlertDialog;
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setActivateStatus(I)V

    .line 270
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 81
    const-string v0, "WimaxSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "WiMax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->updateStatus(I)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 97
    const-string v0, "WimaxSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WimaxSettingButton;->setText(I)V

    .line 188
    return-void
.end method
