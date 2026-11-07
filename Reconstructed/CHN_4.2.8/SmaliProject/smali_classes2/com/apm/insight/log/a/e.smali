.class public final Lcom/apm/insight/log/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/apm/insight/log/a/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 117
    check-cast p1, Lcom/apm/insight/log/a/c$a;

    check-cast p2, Lcom/apm/insight/log/a/c$a;

    .line 1120
    iget-wide v0, p1, Lcom/apm/insight/log/a/c$a;->b:J

    iget-wide v2, p2, Lcom/apm/insight/log/a/c$a;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1122
    :cond_0
    iget-wide v0, p1, Lcom/apm/insight/log/a/c$a;->b:J

    iget-wide p1, p2, Lcom/apm/insight/log/a/c$a;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
