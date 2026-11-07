.class public Lcom/tencent/open/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:I = 0x3e

.field public static b:I = 0x3c

.field public static c:Ljava/lang/String; = "OpenSDK.Client.File.Tracer"

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:J

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tencent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msflogs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/a/c;->d:Ljava/lang/String;

    .line 34
    const-string v0, ".log"

    sput-object v0, Lcom/tencent/open/a/c;->e:Ljava/lang/String;

    const-wide/32 v0, 0x800000

    .line 35
    sput-wide v0, Lcom/tencent/open/a/c;->f:J

    const/high16 v0, 0x40000

    .line 36
    sput v0, Lcom/tencent/open/a/c;->g:I

    const/16 v0, 0x2000

    .line 37
    sput v0, Lcom/tencent/open/a/c;->h:I

    const/16 v0, 0x2710

    .line 38
    sput v0, Lcom/tencent/open/a/c;->i:I

    .line 40
    const-string v0, "debug.file.blockcount"

    sput-object v0, Lcom/tencent/open/a/c;->j:Ljava/lang/String;

    .line 41
    const-string v0, "debug.file.keepperiod"

    sput-object v0, Lcom/tencent/open/a/c;->k:Ljava/lang/String;

    .line 42
    const-string v0, "debug.file.tracelevel"

    sput-object v0, Lcom/tencent/open/a/c;->l:Ljava/lang/String;

    const/16 v0, 0x18

    .line 44
    sput v0, Lcom/tencent/open/a/c;->m:I

    const-wide/32 v0, 0x240c8400

    .line 45
    sput-wide v0, Lcom/tencent/open/a/c;->n:J

    return-void
.end method
