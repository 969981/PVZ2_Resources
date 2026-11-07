.class public Lcom/testmainiactiviy;
.super Landroid/app/Activity;
.source "testmainiactiviy.java"


# static fields
.field private static bt_init:Landroid/widget/Button;

.field private static bt_vedio:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "mainactivitylayout"

    .line 19
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/testmainiactiviy;->setContentView(I)V

    const-string p1, "bt_init"

    .line 20
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/testmainiactiviy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/testmainiactiviy;->bt_init:Landroid/widget/Button;

    const-string p1, "bt_vedio"

    .line 21
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/testmainiactiviy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/testmainiactiviy;->bt_vedio:Landroid/widget/Button;

    .line 22
    sget-object p1, Lcom/testmainiactiviy;->bt_init:Landroid/widget/Button;

    new-instance v0, Lcom/testmainiactiviy$1;

    invoke-direct {v0, p0}, Lcom/testmainiactiviy$1;-><init>(Lcom/testmainiactiviy;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget-object p1, Lcom/testmainiactiviy;->bt_vedio:Landroid/widget/Button;

    new-instance v0, Lcom/testmainiactiviy$2;

    invoke-direct {v0, p0}, Lcom/testmainiactiviy$2;-><init>(Lcom/testmainiactiviy;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
