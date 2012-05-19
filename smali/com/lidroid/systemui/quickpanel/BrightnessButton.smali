.class public Lcom/lidroid/systemui/quickpanel/BrightnessButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static final CM_MODE_AUTO_LOW_MAX:I = 0x2

.field private static final CM_MODE_AUTO_MIN_DEF_MAX:I = 0x0

.field private static final CM_MODE_AUTO_MIN_LOW_MID_HIGH_MAX:I = 0x1

.field private static final CM_MODE_MIN_MAX:I = 0x3

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final HIGH_BACKLIGHT:I = 0xbf

.field private static final LOW_BACKLIGHT:I = 0x3f

.field private static final MAX_BACKLIGHT:I = 0xff

.field private static final MID_BACKLIGHT:I = 0x7f

.field private static final MIN_BACKLIGHT:I = 0x1e

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBrightnessState(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, brightness:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 188
    .local v1, currentMode:I
    const/16 v2, 0x3f

    if-ge v0, v2, :cond_0

    move v2, v6

    .line 207
    :goto_0
    return v2

    .line 190
    :cond_0
    const/16 v2, 0x66

    if-ge v0, v2, :cond_1

    move v2, v6

    .line 191
    goto :goto_0

    .line 192
    :cond_1
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_3

    .line 193
    if-ne v1, v5, :cond_2

    move v2, v6

    .line 194
    goto :goto_0

    :cond_2
    move v2, v8

    .line 196
    goto :goto_0

    .line 198
    :cond_3
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_5

    .line 199
    if-ne v1, v5, :cond_4

    move v2, v8

    .line 200
    goto :goto_0

    :cond_4
    move v2, v7

    .line 202
    goto :goto_0

    .line 204
    :cond_5
    const/16 v2, 0xff

    if-ge v0, v2, :cond_6

    move v2, v7

    .line 205
    goto :goto_0

    :cond_6
    move v2, v5

    .line 207
    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMinBacklight(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x1e

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_sensor_custom"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_screen_dim"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private static getNextBrightnessValue(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x66

    const/4 v8, 0x3

    const/16 v7, 0x3f

    const/4 v6, 0x2

    const/16 v5, 0xff

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, brightness:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 137
    .local v1, currentMode:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    if-ne v1, v6, :cond_0

    move v2, v7

    .line 178
    :goto_0
    return v2

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 143
    :cond_1
    if-ge v0, v7, :cond_4

    .line 144
    if-ne v1, v6, :cond_2

    move v2, v7

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    if-ne v1, v8, :cond_3

    move v2, v5

    .line 147
    goto :goto_0

    :cond_3
    move v2, v9

    .line 149
    goto :goto_0

    .line 151
    :cond_4
    if-ge v0, v9, :cond_8

    .line 152
    if-nez v1, :cond_5

    move v2, v9

    .line 153
    goto :goto_0

    .line 154
    :cond_5
    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_7

    :cond_6
    move v2, v5

    .line 155
    goto :goto_0

    .line 157
    :cond_7
    const/16 v2, 0x7f

    goto :goto_0

    .line 159
    :cond_8
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_a

    .line 160
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 161
    const/16 v2, 0x7f

    goto :goto_0

    :cond_9
    move v2, v5

    .line 163
    goto :goto_0

    .line 165
    :cond_a
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_c

    .line 166
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 167
    const/16 v2, 0xbf

    goto :goto_0

    :cond_b
    move v2, v5

    .line 169
    goto :goto_0

    .line 171
    :cond_c
    if-ge v0, v5, :cond_d

    move v2, v5

    .line 172
    goto :goto_0

    .line 173
    :cond_d
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eq v1, v8, :cond_e

    .line 174
    const/4 v2, -0x1

    goto :goto_0

    .line 175
    :cond_e
    if-ne v1, v6, :cond_f

    move v2, v7

    .line 176
    goto :goto_0

    .line 178
    :cond_f
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static isAutomaticModeSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 212
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    .line 221
    :cond_0
    :goto_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isBrightnessSetToAutomatic(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 228
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    .local v0, brightnessMode:I
    if-ne v0, v5, :cond_0

    move v3, v5

    .line 238
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 232
    goto :goto_0

    .line 234
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 235
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 238
    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 248
    const v0, 0x30b0048

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const-string v5, "screen_brightness_mode"

    .line 81
    iget-object v5, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 85
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_0

    .line 86
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getNextBrightnessValue(Landroid/content/Context;)I

    move-result v0

    .line 87
    .local v0, brightness:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 89
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0       #brightness:I
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_2
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 99
    const-string v5, "screen_brightness"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 104
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "PowerWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateState()V
    .locals 5

    .prologue
    const v4, 0x3020073

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 53
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const v1, 0x3020070

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 56
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    .line 77
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :pswitch_0
    const v1, 0x3020072

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 73
    const/4 v1, 0x2

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 60
    :pswitch_1
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 61
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 64
    :pswitch_2
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 65
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 68
    :pswitch_3
    const v1, 0x3020071

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 69
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
