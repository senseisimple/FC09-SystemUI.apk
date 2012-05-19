.class public Lcom/lidroid/systemui/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    iget-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/MainActivity;->setContentView(I)V

    .line 19
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;

    iput-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 20
    iget-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 21
    return-void
.end method
