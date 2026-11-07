.class public final enum Lcom/apm/insight/log/a/a$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/log/a/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/log/a/a$e;

.field public static final enum b:Lcom/apm/insight/log/a/a$e;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 431
    new-instance v0, Lcom/apm/insight/log/a/a$e;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$e;->a:Lcom/apm/insight/log/a/a$e;

    new-instance v0, Lcom/apm/insight/log/a/a$e;

    const-string v1, "LEGACY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/apm/insight/log/a/a$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apm/insight/log/a/a$e;->b:Lcom/apm/insight/log/a/a$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 435
    iput p3, p0, Lcom/apm/insight/log/a/a$e;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/apm/insight/log/a/a$e;->c:I

    return v0
.end method
