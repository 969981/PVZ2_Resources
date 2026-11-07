.class public final Lcom/apm/insight/log/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;

.field private static j:Lcom/apm/insight/log/a$a;

.field private static k:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Throwable;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:J

.field public h:J

.field private l:Lcom/apm/insight/log/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 621
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/apm/insight/log/a$a;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 623
    sput v0, Lcom/apm/insight/log/a$a;->k:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 631
    iput v0, p0, Lcom/apm/insight/log/a$a;->e:I

    return-void
.end method

.method public static a()Lcom/apm/insight/log/a$a;
    .locals 3

    .line 638
    sget-object v0, Lcom/apm/insight/log/a$a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    sget-object v1, Lcom/apm/insight/log/a$a;->j:Lcom/apm/insight/log/a$a;

    if-eqz v1, :cond_0

    .line 640
    sget-object v1, Lcom/apm/insight/log/a$a;->j:Lcom/apm/insight/log/a$a;

    .line 641
    iget-object v2, v1, Lcom/apm/insight/log/a$a;->l:Lcom/apm/insight/log/a$a;

    sput-object v2, Lcom/apm/insight/log/a$a;->j:Lcom/apm/insight/log/a$a;

    const/4 v2, 0x0

    .line 642
    iput-object v2, v1, Lcom/apm/insight/log/a$a;->l:Lcom/apm/insight/log/a$a;

    .line 643
    sget v2, Lcom/apm/insight/log/a$a;->k:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/apm/insight/log/a$a;->k:I

    .line 644
    monitor-exit v0

    return-object v1

    .line 646
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    new-instance v0, Lcom/apm/insight/log/a$a;

    invoke-direct {v0}, Lcom/apm/insight/log/a$a;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 646
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 651
    iput-object v0, p0, Lcom/apm/insight/log/a$a;->b:Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/apm/insight/log/a$a;->c:Ljava/lang/String;

    .line 653
    iput-object v0, p0, Lcom/apm/insight/log/a$a;->d:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 654
    iput v1, p0, Lcom/apm/insight/log/a$a;->e:I

    .line 655
    iput-object v0, p0, Lcom/apm/insight/log/a$a;->f:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    .line 656
    iput-wide v1, p0, Lcom/apm/insight/log/a$a;->g:J

    const-wide/16 v1, 0x0

    .line 657
    iput-wide v1, p0, Lcom/apm/insight/log/a$a;->h:J

    .line 658
    iput-object v0, p0, Lcom/apm/insight/log/a$a;->l:Lcom/apm/insight/log/a$a;

    .line 659
    sget-object v0, Lcom/apm/insight/log/a$a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    sget v1, Lcom/apm/insight/log/a$a;->k:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 661
    sget-object v1, Lcom/apm/insight/log/a$a;->j:Lcom/apm/insight/log/a$a;

    iput-object v1, p0, Lcom/apm/insight/log/a$a;->l:Lcom/apm/insight/log/a$a;

    .line 662
    sput-object p0, Lcom/apm/insight/log/a$a;->j:Lcom/apm/insight/log/a$a;

    .line 663
    sget v1, Lcom/apm/insight/log/a$a;->k:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/apm/insight/log/a$a;->k:I

    .line 665
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
