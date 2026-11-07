.class public final Lcom/bytedance/ads/convert/flat/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/e/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/ads/convert/flat/e/a$a;

.field public static final b:Lcom/bytedance/ads/convert/flat/a/f;

.field public static final c:Ljava/lang/String;

.field public static d:Lcom/bytedance/ads/convert/flat/e/a$a;

.field public static e:Lcom/bytedance/ads/convert/flat/a/f;

.field public static f:J

.field public static volatile g:J

.field public static final h:Lcom/bytedance/ads/convert/flat/e/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/bytedance/ads/convert/flat/e/a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/e/a;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/e/a;->h:Lcom/bytedance/ads/convert/flat/e/a;

    new-instance v0, Lcom/bytedance/ads/convert/flat/e/a$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/ads/convert/flat/e/a$a;-><init>(ZJ)V

    .line 2
    sput-object v0, Lcom/bytedance/ads/convert/flat/e/a;->a:Lcom/bytedance/ads/convert/flat/e/a$a;

    new-instance v1, Lcom/bytedance/ads/convert/flat/a/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/ads/convert/flat/a/f;-><init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;I)V

    sput-object v1, Lcom/bytedance/ads/convert/flat/e/a;->b:Lcom/bytedance/ads/convert/flat/a/f;

    const-string v2, "https://analytics.oceanengine.com/sdk/app/config"

    sput-object v2, Lcom/bytedance/ads/convert/flat/e/a;->c:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/ads/convert/flat/e/a;->d:Lcom/bytedance/ads/convert/flat/e/a$a;

    sput-object v1, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/bytedance/ads/convert/flat/e/a;->f:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/ads/convert/flat/e/a;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
