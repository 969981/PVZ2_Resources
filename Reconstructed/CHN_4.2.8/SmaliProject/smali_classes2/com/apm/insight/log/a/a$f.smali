.class public final enum Lcom/apm/insight/log/a/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/log/a/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/log/a/a$f;

.field public static final enum b:Lcom/apm/insight/log/a/a$f;

.field private static enum c:Lcom/apm/insight/log/a/a$f;

.field private static enum d:Lcom/apm/insight/log/a/a$f;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 457
    new-instance v0, Lcom/apm/insight/log/a/a$f;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$f;->a:Lcom/apm/insight/log/a/a$f;

    new-instance v0, Lcom/apm/insight/log/a/a$f;

    const-string v1, "TEA_16"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$f;->b:Lcom/apm/insight/log/a/a$f;

    new-instance v0, Lcom/apm/insight/log/a/a$f;

    const-string v1, "TEA_32"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$f;->c:Lcom/apm/insight/log/a/a$f;

    new-instance v0, Lcom/apm/insight/log/a/a$f;

    const-string v1, "TEA_64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$f;->d:Lcom/apm/insight/log/a/a$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 461
    iput p3, p0, Lcom/apm/insight/log/a/a$f;->e:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/apm/insight/log/a/a$f;->e:I

    return v0
.end method
