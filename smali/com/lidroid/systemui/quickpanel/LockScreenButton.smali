.class public Lcom/lidroid/systemui/quickpanel/LockScreenButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "LockScreenButton.java"


# static fields
.field private static LOCK_SCREEN_STATE:Ljava/lang/Boolean;


# instance fields
.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 18
    const-string v0, "toggleLockScreen"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "keyguard"

    .line 71
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 72
    const-string v1, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 74
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v1, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 76
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v1
.end method

.method private static getState()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    .line 83
    :cond_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x30b004a

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 37
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->getState()Z

    .line 39
    sget-object v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 40
    const-string v2, "Not yet initialized"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 41
    .local v1, msg:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 42
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 58
    .end local v1           #msg:Landroid/widget/Toast;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->update()V

    .line 59
    return-void

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;

    .line 45
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 48
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 51
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected updateState()V
    .locals 2

    .prologue
    const v1, 0x302007b

    .line 22
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->getState()Z

    .line 23
    sget-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 24
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mIcon:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mState:I

    .line 33
    :goto_0
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const v0, 0x302007c

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mIcon:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mState:I

    goto :goto_0

    .line 30
    :cond_1
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mIcon:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenButton;->mState:I

    goto :goto_0
.end method
