.class public Lcom/bytedance/ads/convert/flat/m/e$b;
.super Lcom/bytedance/ads/convert/flat/k/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/flat/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/ads/convert/flat/m/e$b;->c:J

    return-void
.end method
