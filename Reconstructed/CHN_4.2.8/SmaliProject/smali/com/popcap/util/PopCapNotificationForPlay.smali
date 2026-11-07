.class public Lcom/popcap/util/PopCapNotificationForPlay;
.super Lcom/popcap/util/PopCapNotificationAbstract;
.source "PopCapNotificationForPlay.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lcom/popcap/util/PopCapNotificationAbstract;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    const/16 p1, 0x10

    .line 7
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForPlay;->type:I

    return-void
.end method

.method public static updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V
    .locals 2

    .line 13
    iget v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/popcap/util/PopCapNotificationAbstract;->updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public statusToHtml()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<notification>\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-super {p0}, Lcom/popcap/util/PopCapNotificationAbstract;->statusToHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "</notification>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
