.class public Lgbsdk/common/host/abcx$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field dA:[Ljava/lang/StackTraceElement;

.field e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abcx$1;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abcx$ab;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/common/host/abcx$ab;->a:J

    iput-wide v0, p0, Lgbsdk/common/host/abcx$ab;->b:J

    iput-wide v0, p0, Lgbsdk/common/host/abcx$ab;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lgbsdk/common/host/abcx$ab;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/common/host/abcx$ab;->dA:[Ljava/lang/StackTraceElement;

    return-void
.end method
