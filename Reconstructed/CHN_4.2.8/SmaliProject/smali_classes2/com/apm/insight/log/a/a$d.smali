.class public final enum Lcom/apm/insight/log/a/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/log/a/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/log/a/a$d;

.field private static enum b:Lcom/apm/insight/log/a/a$d;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 405
    new-instance v0, Lcom/apm/insight/log/a/a$d;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$d;->b:Lcom/apm/insight/log/a/a$d;

    new-instance v0, Lcom/apm/insight/log/a/a$d;

    const-string v1, "SAFE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$d;->a:Lcom/apm/insight/log/a/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput p3, p0, Lcom/apm/insight/log/a/a$d;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/apm/insight/log/a/a$d;->c:I

    return v0
.end method
