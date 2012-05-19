.class public final Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "SoundSettingButton.java"


# static fields
.field private static mSoundProfile:I

.field private static mSoundText:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    return-void
.end method

.method private updateIconsAndText()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v5, 0x0

    .local v5, statusIconRes:I
    const/4 v3, 0x0

    .line 89
    .local v3, soundText:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a0017

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0019

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 93
    .local v4, statusIcon:Landroid/widget/ImageView;
    const/16 v6, 0x52

    invoke-virtual {p0, v7, v6, v7, v7}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 118
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 121
    sput v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    .line 122
    return-void

    .line 97
    :pswitch_0
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    if-ne v8, v6, :cond_0

    .line 98
    const v1, 0x7f020026

    .line 99
    const v3, 0x7f080015

    .line 100
    const/16 v6, 0x43

    invoke-virtual {p0, v7, v6, v7, v7}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 105
    :goto_1
    const v5, 0x7f020021

    .line 106
    goto :goto_0

    .line 102
    :cond_0
    const v1, 0x7f020025

    .line 103
    const v3, 0x7f080014

    goto :goto_1

    .line 108
    :pswitch_1
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-nez v6, :cond_2

    .line 109
    const v1, 0x7f020024

    .line 110
    const v3, 0x7f080016

    .line 115
    :cond_1
    :goto_2
    const v5, 0x7f020020

    goto :goto_0

    .line 111
    :cond_2
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v8, v6, :cond_1

    .line 112
    const v1, 0x7f020027

    .line 113
    const v3, 0x7f080017

    goto :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x2

    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateIconsAndText()V

    .line 85
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "SoundSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 131
    return-void
.end method

.method public checkWifiForWimax()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    const-string v1, "SoundSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 156
    return-void

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    .line 139
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "SoundSettingButton"

    .line 53
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 54
    const-string v1, "SoundSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "SoundSettingButton"

    const-string v1, "mAudioManager is null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 74
    const-string v0, "SoundSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 126
    return-void
.end method
