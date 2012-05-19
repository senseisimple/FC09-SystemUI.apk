.class public Lcom/lidroid/systemui/quickpanel/GPSButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "GPSButton.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/lidroid/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleGPS"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
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
    .line 57
    sget-object v0, Lcom/lidroid/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x30b0046

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    .line 39
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 41
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    .line 42
    .local v1, enabled:Z
    const-string v3, "gps"

    if-nez v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 44
    return-void

    .line 42
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected updateState()V
    .locals 2

    .prologue
    const-string v1, "PowerButton"

    .line 26
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const v0, 0x3020079

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mIcon:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mState:I

    .line 29
    const-string v0, "PowerButton"

    const-string v0, "GPS: on"

    invoke-static {v1, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x3020078

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mIcon:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/GPSButton;->mState:I

    .line 33
    const-string v0, "PowerButton"

    const-string v0, "GPS: off"

    invoke-static {v1, v0}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
