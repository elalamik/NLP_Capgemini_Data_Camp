?	?&??d?5@?&??d?5@!?&??d?5@	??????????!?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?&??d?5@	PS?ֺ3@1gF?N??A???n/i??IB?p?-???Y??HV??*	??C?tV@2U
Iterator::Model::ParallelMapV2Ps?"???!?$??_>@)Ps?"???1?$??_>@:Preprocessing2F
Iterator::Model)x
?RϪ?!(???&M@)}"O????1RCaZ?;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatVDM??(??!zj:???4@)͔?????1âQA?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate}Xo?
Ӈ?!? W??)@)T?^Pz?1??~??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?\QJVu?!=S??~2@)?\QJVu?1=S??~2@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?w???-??!?=??D@)?G?,r?1?-la?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??#?Gk?!?=Fw??@)??#?Gk?1?=Fw??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????N??!??h??/@)??qn?e?1BuGP??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?????I??FLCX@QW??xt?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
		PS?ֺ3@	PS?ֺ3@!	PS?ֺ3@      ??!       "	gF?N??gF?N??!gF?N??*      ??!       2	???n/i?????n/i??!???n/i??:	B?p?-???B?p?-???!B?p?-???B      ??!       J	??HV????HV??!??HV??R      ??!       Z	??HV????HV??!??HV??b      ??!       JGPUY?????b q??FLCX@yW??xt?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsR?>9???!R?>9???";
sequential_26/dense_78/MatMulMatMuljI?+¢?!j??b???0";
sequential_26/dense_80/SoftmaxSoftmax+J?S:??!O۴?????"I
+gradient_tape/sequential_26/dense_78/MatMulMatMul?f,\??!??G?I??0"I
-gradient_tape/sequential_26/dense_80/MatMul_1MatMulz?MD?;??!~\랝??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam.??F?*??!:?oH???"I
-gradient_tape/sequential_26/dense_79/MatMul_1MatMul?<???ה?!???Z?=??";
sequential_26/dense_79/MatMulMatMul?uꆔ??!E|????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamj?}????!?;Z!x???"`
=sequential_26/dropout_26/dropout/random_uniform/RandomUniformRandomUniform?Z?W?ސ?!?1?b???Q      Y@Y[ZZZZZ6@ajiiiiiS@q?J????L@yO????~??"?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 