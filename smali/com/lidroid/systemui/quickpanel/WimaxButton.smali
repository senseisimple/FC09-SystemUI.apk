.class public Lcom/lidroid/systemui/quickpanel/WimaxButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "WimaxButton.java"


# static fields
.field public static STATE_CHANGE_REQUEST:Z = false

.field private static final TAG:Ljava/lang/String; = "WimaxButton"

.field public static final WIMAX_ENABLED_STATUS_CHANGED:Ljava/lang/String; = "android.net.wimax.WIMAX_STATUS_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleWimax"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getWimaxState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "WiMax"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    .local v0, wimaxManager:Landroid/net/wimax/WimaxManager;
    invoke-virtual {v0}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

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
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    const v0, 0x7f080019

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wimax.WimaxSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public networkModeChanged(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"

    .prologue
    sget-boolean v1, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v1, :cond_0

    const-string v1, "WiMax"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    .local v0, wimax:Landroid/net/wimax/WimaxManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    .end local v0           #wimax:Landroid/net/wimax/WimaxManager;
    :cond_0
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/WimaxButton;->getWimaxState(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "WiMax"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    .local v0, wimax:Landroid/net/wimax/WimaxManager;
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    goto :goto_0
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v1, 0x7f020019

    const-string v2, "WimaxButton"

    sget-boolean v0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mState:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/WimaxButton;->getWimaxState(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mState:I

    const-string v2, "WimaxButton"

    const-string v0, "WiMax: on"

    invoke-static {v2, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020018

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WimaxButton;->mState:I

    const-string v2, "WimaxButton"

    const-string v0, "WiMax: off"

    invoke-static {v2, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
