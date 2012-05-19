.class public Lcom/lidroid/systemui/quickpanel/MobileDataButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "MobileDataButton.java"


# static fields
.field public static final MOBILE_DATA_CHANGED:Ljava/lang/String; = "com.android.internal.telephony.MOBILE_DATA_CHANGED"

.field public static STATE_CHANGE_REQUEST:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileDataButton"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleMobileData"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getDataRomingEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x30b003e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CdmaSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v1, 0x1

    return v1
.end method

.method public networkModeChanged(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"

    .prologue
    .line 84
    sget-boolean v1, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 88
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    .line 90
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 42
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v2

    .line 45
    .local v2, enabled:Z
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const v1, 0x3020075

    const-string v2, "MobileDataButton"

    .line 26
    sget-boolean v0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v0, :cond_0

    .line 27
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mIcon:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mState:I

    .line 38
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mIcon:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mState:I

    .line 32
    const-string v0, "MobileDataButton"

    const-string v0, "Data Connection: on"

    invoke-static {v2, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    const v0, 0x3020074

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mIcon:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/MobileDataButton;->mState:I

    .line 36
    const-string v0, "MobileDataButton"

    const-string v0, "Data Connection: off"

    invoke-static {v2, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
