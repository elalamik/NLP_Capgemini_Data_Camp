?	A?S??";@A?S??";@!A?S??";@	|?,????|?,????!|?,????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6A?S??";@(?hr1"9@1}v?u???A?n?1??Iۣ7?G???Y?wE?????*	`??"۩W@2U
Iterator::Model::ParallelMapV2?s???z??!]?? A@)?s???z??1]?? A@:Preprocessing2F
Iterator::ModelB??v?$??!?2??&	M@)????S??1pHP?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ht???!??
??P4@)?I*S?A??1??7}??0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatee??Q??!????T'+@)??Քd}?1??,H?S@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?z6?>w?!؟??i?@)?z6?>w?1؟??i?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?'??Q??!l?X??D@)iq?0'hs?13?eջ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorJ??	?yk?!(???X@)J??	?yk?1(???X@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap5?;???!?}M6W?0@)*Ŏơ~g?1wH??g=@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9}?,????I ????cX@QKN??ג??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	(?hr1"9@(?hr1"9@!(?hr1"9@      ??!       "	}v?u???}v?u???!}v?u???*      ??!       2	?n?1???n?1??!?n?1??:	ۣ7?G???ۣ7?G???!ۣ7?G???B      ??!       J	?wE??????wE?????!?wE?????R      ??!       Z	?wE??????wE?????!?wE?????b      ??!       JGPUY}?,????b q ????cX@yKN??ג???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitslg?Z???!lg?Z???"<
sequential_74/dense_222/MatMulMatMulwkL5??!?A?M??0"<
sequential_74/dense_224/SoftmaxSoftmax
$?V?*??![??-??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?;H????!bۨ????"J
,gradient_tape/sequential_74/dense_222/MatMulMatMul??????!3?X
?1??0"J
.gradient_tape/sequential_74/dense_224/MatMul_1MatMulB/??S??!'sjֆ??"J
.gradient_tape/sequential_74/dense_223/MatMul_1MatMul/`??ߔ?!*??????"<
sequential_74/dense_223/MatMulMatMul?,6?>???!?g(?R???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??p ~4??!?k/?? ??"J
,gradient_tape/sequential_74/dense_223/MatMulMatMul-?s?ٔ??!i??!?)??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??ȳTM@y?tt????"?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?58.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 