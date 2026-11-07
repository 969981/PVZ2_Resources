.class public final enum Lcom/apm/insight/log/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/log/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/log/a/a$a;

.field public static final enum b:Lcom/apm/insight/log/a/a$a;

.field private static enum c:Lcom/apm/insight/log/a/a$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 470
    new-instance v0, Lcom/apm/insight/log/a/a$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$a;->a:Lcom/apm/insight/log/a/a$a;

    new-instance v0, Lcom/apm/insight/log/a/a$a;

    const-string v1, "EC_SECP256K1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$a;->b:Lcom/apm/insight/log/a/a$a;

    new-instance v0, Lcom/apm/insight/log/a/a$a;

    const-string v1, "EC_SECP256R1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$a;->c:Lcom/apm/insight/log/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 474
    iput p3, p0, Lcom/apm/insight/log/a/a$a;->d:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/apm/insight/log/a/a$a;->d:I

    return v0
.end method
