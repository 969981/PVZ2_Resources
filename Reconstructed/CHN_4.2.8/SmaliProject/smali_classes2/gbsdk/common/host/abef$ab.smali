.class public Lgbsdk/common/host/abef$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:J

.field c:J

.field e:Ljava/lang/String;

.field eT:Lcom/apm/insight/CrashType;


# direct methods
.method constructor <init>(Ljava/io/File;JLcom/apm/insight/CrashType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/common/host/abef$ab;->b:J

    iput-wide v0, p0, Lgbsdk/common/host/abef$ab;->c:J

    iput-object p1, p0, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    iput-wide p2, p0, Lgbsdk/common/host/abef$ab;->b:J

    iput-object p4, p0, Lgbsdk/common/host/abef$ab;->eT:Lcom/apm/insight/CrashType;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abef$ab;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/common/host/abef$ab;->b:J

    iput-wide v0, p0, Lgbsdk/common/host/abef$ab;->c:J

    iput-object p1, p0, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    iput-object p2, p0, Lgbsdk/common/host/abef$ab;->eT:Lcom/apm/insight/CrashType;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abef$ab;->e:Ljava/lang/String;

    return-void
.end method
