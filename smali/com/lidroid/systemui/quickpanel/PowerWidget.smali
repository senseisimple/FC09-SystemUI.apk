.class public Lcom/lidroid/systemui/quickpanel/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;,
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "toggleWifi|toggleBluetooth|toggleGPS|toggleSound|toggleWimax|toggleFlashlight|toggleAutoRotate|toggleMobileData|toggleSync|toggleAirplane|toggleBrightness|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_FLASH_MODE:Ljava/lang/String; = "expanded_flash_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field public static final EXPANDED_SCREENTIMEOUT_MODE:Ljava/lang/String; = "expanded_screentimeout_mode"

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I = 0x8

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    .line 142
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    .line 143
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->animateCollapse()V

    return-void
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private needScrollBar(I)Z
    .locals 5
    .parameter "buttonCount"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 287
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 288
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    move v1, v4

    .line 291
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 288
    goto :goto_0

    .line 291
    :cond_1
    const/4 v1, 0x5

    if-le p1, v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private observeAllObserver()V
    .locals 3

    .prologue
    .line 251
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 252
    .local v1, observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->observe()V

    goto :goto_0

    .line 253
    .end local v1           #observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$1;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 272
    :cond_0
    return-void
.end method

.method private setupSettingsObserver()V
    .locals 6

    .prologue
    .line 235
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 237
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_widget_buttons"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 246
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private unobserveAllObserver()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 257
    .local v1, observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->unobserve()V

    goto :goto_0

    .line 258
    .end local v1           #observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 277
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 278
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 348
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 369
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 374
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 265
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 266
    return-void
.end method

.method public setupWidget()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v11, "PowerWidget"

    .line 150
    const-string v9, "PowerWidget"

    const-string v9, "Clearing any old widget stuffs"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 155
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v9, :cond_0

    .line 156
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 162
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->unloadAllButtons()V

    .line 164
    const-string v9, "PowerWidget"

    const-string v9, "Setting up widget"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "expanded_widget_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, buttons:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 168
    const-string v9, "PowerWidget"

    const-string v9, "Default buttons being loaded"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "toggleWifi|toggleBluetooth|toggleGPS|toggleSound|toggleWimax|toggleFlashlight|toggleAutoRotate|toggleMobileData|toggleSync|toggleAirplane|toggleBrightness|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

    .line 171
    :cond_1
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Button list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v8, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, buttonCount:I
    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, v0, v6

    .line 180
    .local v1, button:Ljava/lang/String;
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting up button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x3030002

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, buttonView:Landroid/view/View;
    invoke-static {v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    sget-object v9, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 179
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    :cond_2
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting up button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1           #button:Ljava/lang/String;
    .end local v3           #buttonView:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v2}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->needScrollBar(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 204
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x3030004

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    iput-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 206
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v12}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, v10}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :goto_2
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupBroadcastReceiver()V

    .line 216
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v5

    .line 218
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v9, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupSettingsObserver()V

    .line 227
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->observeAllObserver()V

    .line 228
    return-void

    .line 211
    .end local v5           #filter:Landroid/content/IntentFilter;
    :cond_4
    sget-object v9, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v8, v9}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public updateWidget()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateAllButtons()V

    .line 232
    return-void
.end method
