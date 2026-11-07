.class public Legame/terminal/feesmslib/jni/SmsProtocol;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "smsprotocol"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native encrypt(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
