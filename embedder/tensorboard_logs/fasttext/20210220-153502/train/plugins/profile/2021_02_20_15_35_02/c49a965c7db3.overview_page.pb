?	A*Ŏ?/@@A*Ŏ?/@@!A*Ŏ?/@@	?c??????c?????!?c?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6A*Ŏ?/@@UN{J??=@1a?>#??A???˚X??I='?o|???Y??t=?u??*	??ʡE?X@2U
Iterator::Model::ParallelMapV2???Mb??!8?_R+b?@)???Mb??18?_R+b?@:Preprocessing2F
Iterator::Model??ť*m??!?"S?H@)9毐???1?	??zJ2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatӟ?H??!??????5@)??Jvl??1?
?W??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?[z4??!?g\??4@)???%?2??1N? 0??,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?l ]lz?!8:p???@)?l ]lz?18:p???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipU1?~©?!??Uݬ)I@)a??>??t?1uC??FQ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorm??J?Rp?!rf??{?@)m??J?Rp?1rf??{?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapn???8??!f?;5?7@)????5"h?1?m??	?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?c?????I??CvOZX@Q????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	UN{J??=@UN{J??=@!UN{J??=@      ??!       "	a?>#??a?>#??!a?>#??*      ??!       2	???˚X?????˚X??!???˚X??:	='?o|???='?o|???!='?o|???B      ??!       J	??t=?u????t=?u??!??t=?u??R      ??!       Z	??t=?u????t=?u??!??t=?u??b      ??!       JGPUY?c?????b q??CvOZX@y????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits0Q^?J??!0Q^?J??"=
sequential_197/dense_591/MatMulMatMul??|?[???!???????0"=
 sequential_197/dense_593/SoftmaxSoftmax??[M???!c???N??"=
sequential_197/dense_592/MatMulMatMul???????!x?"?p??0"K
/gradient_tape/sequential_197/dense_593/MatMul_1MatMulUD?E??!'??y??"K
-gradient_tape/sequential_197/dense_591/MatMulMatMulGM?N"??!?ȥ}?}??0"K
/gradient_tape/sequential_197/dense_592/MatMul_1MatMulJ??E??!?Lx?????"b
?sequential_197/dropout_197/dropout/random_uniform/RandomUniformRandomUniform8?X%?Ҍ?!??Ԇ???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??;???!??{?bV??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam-??kK??!1L?5???Q      Y@Y??(??(.@a?뺮?:U@q?Aq??P@y???A????"?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 