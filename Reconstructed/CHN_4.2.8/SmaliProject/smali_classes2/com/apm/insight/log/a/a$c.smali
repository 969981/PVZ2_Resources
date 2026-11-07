.class public final enum Lcom/apm/insight/log/a/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/log/a/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/log/a/a$c;

.field public static final enum b:Lcom/apm/insight/log/a/a$c;

.field private static enum c:Lcom/apm/insight/log/a/a$c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 444
    new-instance v0, Lcom/apm/insight/log/a/a$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$c;->a:Lcom/apm/insight/log/a/a$c;

    new-instance v0, Lcom/apm/insight/log/a/a$c;

    const-string v1, "ZLIB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$c;->c:Lcom/apm/insight/log/a/a$c;

    new-instance v0, Lcom/apm/insight/log/a/a$c;

    const-string v1, "ZSTD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$c;->b:Lcom/apm/insight/log/a/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 448
    iput p3, p0, Lcom/apm/insight/log/a/a$c;->d:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/apm/insight/log/a/a$c;->d:I

    return v0
.end method
