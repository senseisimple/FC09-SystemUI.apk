.class public final Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "BluetoothSettingButton.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private couldClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, isAirPlaneMode:I
    if-ne v0, v4, :cond_0

    move v1, v3

    .line 153
    :goto_0
    return v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 149
    const-string v1, "BluetoothSettingButton"

    const-string v2, "mBluetoothAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 150
    goto :goto_0

    :cond_1
    move v1, v4

    .line 153
    goto :goto_0
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 33
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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a0011

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0013

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setTextColor(I)V

    .line 106
    return-void

    .line 90
    :pswitch_0
    const v1, 0x7f02001c

    .line 91
    const v4, 0x7f020021

    .line 92
    goto :goto_0

    .line 94
    :pswitch_1
    const v1, 0x7f02001b

    .line 95
    const v4, 0x7f020020

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    const v1, 0x7f02001a

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

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateIconsAndTextColor()V

    .line 80
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 75
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    const-string v2, "BluetoothSettingButton"

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "BluetoothSettingButton"

    const-string v1, "activate() couldn\'t click"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "BluetoothSettingButton"

    const-string v1, "activate()"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 123
    const-string v1, "BluetoothSettingButton"

    const-string v2, "BT is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method public checkWifiForWimax()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v1, "BluetoothSettingButton"

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate() couldn\'t click"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 42
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 58
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    .line 110
    return-void
.end method
