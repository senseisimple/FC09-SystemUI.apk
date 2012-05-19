.class public Lcom/lidroid/systemui/quickpanel/RebootButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "RebootButton.java"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 10
    const-string v0, "now"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    .line 13
    const-string v0, "toggleReboot"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mType:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/RebootButton;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lidroid/systemui/quickpanel/RebootButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object p1
.end method

.method private reboot()V
    .locals 6

    .prologue
    .line 27
    const-string v3, "now"

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 31
    const v3, 0x30b0039

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 33
    const v3, 0x3050004

    const/4 v4, 0x0

    new-instance v5, Lcom/lidroid/systemui/quickpanel/RebootButton$1;

    invoke-direct {v5, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v3, 0x104000a

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$2;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    const/high16 v3, 0x104

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$3;

    invoke-direct {v4, p0}, Lcom/lidroid/systemui/quickpanel/RebootButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 54
    .local v2, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 55
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 56
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x30b004d

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/RebootButton;->reboot()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    .line 19
    const v0, 0x3020080

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mIcon:I

    .line 20
    return-void
.end method
