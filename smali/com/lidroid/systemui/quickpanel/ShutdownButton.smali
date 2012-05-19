.class public Lcom/lidroid/systemui/quickpanel/ShutdownButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "ShutdownButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 11
    const-string v0, "toggleShutdown"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mType:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mState:I

    .line 13
    return-void
.end method

.method private shutdown()V
    .locals 5

    .prologue
    .line 25
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 26
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 28
    const v3, 0x30b0039

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v3, 0x30b0050

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 31
    const v3, 0x104000a

    new-instance v4, Lcom/lidroid/systemui/quickpanel/ShutdownButton$1;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/ShutdownButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/ShutdownButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const/high16 v3, 0x104

    new-instance v4, Lcom/lidroid/systemui/quickpanel/ShutdownButton$2;

    invoke-direct {v4, p0}, Lcom/lidroid/systemui/quickpanel/ShutdownButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/ShutdownButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 47
    .local v2, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 48
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 49
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x30b004e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->shutdown()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mState:I

    .line 17
    const v0, 0x3020089

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mIcon:I

    .line 18
    return-void
.end method
