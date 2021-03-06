?	]o??c?@]o??c?@!]o??c?@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-]o??c?@??%s,c;@1?????D??A΍?	K<??I??N]??@*	?t???@2F
Iterator::Model뫫????!?l-??@W@)dt@?m??1???y?U@:Preprocessing2U
Iterator::Model::ParallelMapV2hx?﫢?!t??q(@)hx?﫢?1t??q(@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?`???p??!??m?{0@)FzQ?_??1^{??\	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????}?!P?oQҋ??)?????}?1P?oQҋ??:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?D2?؊?!?w?????)ڐfx?1<?h????:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipt?%z???!?6)?b?@)?*?WY?t?1??Tտ??:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?k???Dp?!x??{?N??)?k???Dp?1x??{?N??:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapF??(&o??!??vT?@)?*5{?h?17ޠ?Q???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???4U?X@Q??HƲ???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??%s,c;@??%s,c;@!??%s,c;@      ??!       "	?????D???????D??!?????D??*      ??!       2	΍?	K<??΍?	K<??!΍?	K<??:	??N]??@??N]??@!??N]??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???4U?X@y??HƲ????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKx??*???!Kx??*???"<
sequential_75/dense_225/MatMulMatMul?lJV????!?	??	??0"<
sequential_75/dense_227/SoftmaxSoftmax?t鵟?!+??:r??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamYP???\??!1??%A???"J
,gradient_tape/sequential_75/dense_225/MatMulMatMul?4?<?+??!~??) ???0"J
.gradient_tape/sequential_75/dense_226/MatMul_1MatMul?І??e??!?O6_C??"J
.gradient_tape/sequential_75/dense_227/MatMul_1MatMuldD?Vm???!?ӄV???"<
sequential_75/dense_226/MatMulMatMuldD?Vm???!X??L???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??Π?f??!?D?????"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam?.fEp??!??R????Q      Y@Y[ZZZZZ6@ajiiiiiS@qP??ԡ?@y?????2??"?
both?Your program is POTENTIALLY input-bound because 87.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?11.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?31.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 