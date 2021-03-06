?	N
?gZF@N
?gZF@!N
?gZF@	?cy|?????cy|????!?cy|????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6N
?gZF@?C?bHA@1eȱ????AU?????I??:8?? @Yެ?????*	1?Z?U@2U
Iterator::Model::ParallelMapV2^?SH??!???p?@@)^?SH??1???p?@@:Preprocessing2F
Iterator::Model?E}?;l??!'?Fs?lM@)8-x?W???1??ev? 9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatv??y?]??!oV?s4@)l?<*??1??????0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice6l??gu?!???s?@)6l??gu?1???s?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipwٯ;?y??!?A????D@)NA~6r?t?1??U?P<@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?$A?
??!?t?\?m'@)?*?)?t?1???n@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???$xCj?!?XKf[?@)???$xCj?1?XKf[?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapH??ߠ???!?\/e?-@)?Nw?x?f?1?3?I?e	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 77.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?cy|????I?.?"xbX@Q??7????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?C?bHA@?C?bHA@!?C?bHA@      ??!       "	eȱ????eȱ????!eȱ????*      ??!       2	U?????U?????!U?????:	??:8?? @??:8?? @!??:8?? @B      ??!       J	ެ?????ެ?????!ެ?????R      ??!       Z	ެ?????ެ?????!ެ?????b      ??!       JGPUY?cy|????b q?.?"xbX@y??7?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?3??????!?3??????"<
sequential_70/dense_210/MatMulMatMul,??񛗠?!? Ʊ ??0"-
IteratorGetNext/_1_Send?R?"?h??!R5??:??"J
,gradient_tape/sequential_70/dense_210/MatMulMatMul{?CR?d??!???{???0"<
sequential_70/dense_212/SoftmaxSoftmax#2h?P??!宊?|???"<
sequential_70/dense_211/MatMulMatMul2??&??!??㤠	??0"J
.gradient_tape/sequential_70/dense_212/MatMul_1MatMul|?D??#??!??G????"J
.gradient_tape/sequential_70/dense_211/MatMul_1MatMul???Ns??!ǝ??#??"<
sequential_70/dense_212/MatMulMatMulf??i???!m?e?i$??0"J
,gradient_tape/sequential_70/dense_211/MatMulMatMul?$??1q??!?>?V???0Q      Y@Y??(??(.@a?뺮?:U@q?????L@y??CVB??"?
both?Your program is POTENTIALLY input-bound because 77.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?19.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 